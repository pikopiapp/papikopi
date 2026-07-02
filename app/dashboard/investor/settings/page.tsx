'use client';

import { useEffect, useState } from 'react';
import { supabase } from '@/lib/supabase';
import { useAuthStore } from '@/lib/store/auth';
import { User, Mail, Phone, DollarSign, Building2, Save, AlertCircle } from 'lucide-react';

interface InvestorProfile {
  id: string;
  email: string;
  name: string;
  phone?: string;
}

interface BankDetails {
  account_holder: string;
  bank_name: string;
  account_number: string;
  routing_number?: string;
}

export default function InvestorSettings() {
  const { user } = useAuthStore();
  const [profile, setProfile] = useState<InvestorProfile | null>(null);
  const [bankDetails, setBankDetails] = useState<BankDetails>({
    account_holder: '',
    bank_name: '',
    account_number: '',
    routing_number: '',
  });
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [successMessage, setSuccessMessage] = useState('');
  const [errorMessage, setErrorMessage] = useState('');

  useEffect(() => {
    let isMounted = true;

    const loadProfile = async () => {
      if (!user?.id) {
        if (isMounted) {
          setProfile(null);
          setBankDetails({
            account_holder: '',
            bank_name: '',
            account_number: '',
            routing_number: '',
          });
          setLoading(false);
        }
        return;
      }

      if (isMounted) {
        setLoading(true);
      }

      try {
        const { data: userData } = await supabase
          .from('users')
          .select('id, email, name, phone')
          .eq('id', user.id)
          .maybeSingle();

        if (!isMounted) return;

        if (userData) {
          setProfile(userData);
        } else {
          setProfile(null);
        }

        const { data: bankData } = await supabase
          .from('investor_profiles')
          .select('account_holder, bank_name, account_number, routing_number')
          .eq('investor_id', user.id)
          .maybeSingle();

        if (!isMounted) return;

        if (bankData) {
          setBankDetails(bankData);
        } else {
          setBankDetails({
            account_holder: '',
            bank_name: '',
            account_number: '',
            routing_number: '',
          });
        }
      } catch (error) {
        console.error('Error fetching profile:', error);
      } finally {
        if (isMounted) {
          setLoading(false);
        }
      }
    };

    void loadProfile();

    return () => {
      isMounted = false;
    };
  }, [user?.id]);

  const handleProfileChange = (field: string, value: string) => {
    if (profile) {
      setProfile({
        ...profile,
        [field]: value,
      });
    }
  };

  const handleBankDetailsChange = (field: string, value: string) => {
    setBankDetails({
      ...bankDetails,
      [field]: value,
    });
  };

  const saveProfile = async () => {
    if (!user?.id || !profile) return;
    setSaving(true);
    setSuccessMessage('');
    setErrorMessage('');

    try {
      // Update user profile
      const { error } = await supabase
        .from('users')
        .update({
          name: profile.name,
          phone: profile.phone,
        })
        .eq('id', user.id);

      if (error) {
        setErrorMessage('Failed to save profile');
        return;
      }

      setSuccessMessage('Profile updated successfully!');
      setTimeout(() => setSuccessMessage(''), 3000);
    } catch (error) {
      console.error('Error saving profile:', error);
      setErrorMessage('An error occurred while saving');
    } finally {
      setSaving(false);
    }
  };

  const saveBankDetails = async () => {
    if (!user?.id) return;
    setSaving(true);
    setSuccessMessage('');
    setErrorMessage('');

    try {
      // Check if record exists
      const { data: existing } = await supabase
        .from('investor_profiles')
        .select('id')
        .eq('investor_id', user.id)
        .single();

      if (existing) {
        // Update existing
        const { error } = await supabase
          .from('investor_profiles')
          .update({
            account_holder: bankDetails.account_holder,
            bank_name: bankDetails.bank_name,
            account_number: bankDetails.account_number,
            routing_number: bankDetails.routing_number,
          })
          .eq('investor_id', user.id);

        if (error) {
          setErrorMessage('Failed to save bank details');
          return;
        }
      } else {
        // Insert new
        const { error } = await supabase
          .from('investor_profiles')
          .insert({
            investor_id: user.id,
            account_holder: bankDetails.account_holder,
            bank_name: bankDetails.bank_name,
            account_number: bankDetails.account_number,
            routing_number: bankDetails.routing_number,
          });

        if (error) {
          setErrorMessage('Failed to save bank details');
          return;
        }
      }

      setSuccessMessage('Bank details updated successfully!');
      setTimeout(() => setSuccessMessage(''), 3000);
    } catch (error) {
      console.error('Error saving bank details:', error);
      setErrorMessage('An error occurred while saving');
    } finally {
      setSaving(false);
    }
  };

  if (loading) {
    return (
      <div className="flex items-center justify-center h-screen">
        <div className="text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-[#F59E0B] mx-auto mb-4"></div>
          <p className="text-gray-600">Loading settings...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="space-y-6">
      {/* Header */}
      <div>
        <h1 className="text-3xl font-bold text-[#1F4E5F]">Settings</h1>
        <p className="text-gray-600 mt-2">Manage your profile and banking information</p>
      </div>

      {/* Success Message */}
      {successMessage && (
        <div className="bg-green-50 border border-green-200 rounded-lg p-4 flex items-start gap-3">
          <div className="mt-0.5 flex-shrink-0">
            <svg className="h-5 w-5 text-green-600" viewBox="0 0 20 20" fill="currentColor">
              <path fillRule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clipRule="evenodd" />
            </svg>
          </div>
          <p className="text-sm font-medium text-green-800">{successMessage}</p>
        </div>
      )}

      {/* Error Message */}
      {errorMessage && (
        <div className="bg-red-50 border border-red-200 rounded-lg p-4 flex items-start gap-3">
          <AlertCircle className="mt-0.5 flex-shrink-0 text-red-600" size={20} />
          <p className="text-sm font-medium text-red-800">{errorMessage}</p>
        </div>
      )}

      {/* Profile Section */}
      <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
        <h2 className="text-xl font-semibold text-[#1F4E5F] mb-6 flex items-center gap-2">
          <User size={20} />
          Profile Information
        </h2>

        {profile && (
          <div className="space-y-6">
            {/* Email (Read-only) */}
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-2">Email</label>
              <div className="flex items-center gap-3 px-4 py-3 bg-gray-50 border border-gray-200 rounded-lg">
                <Mail size={18} className="text-gray-400" />
                <input
                  type="email"
                  value={profile.email}
                  disabled
                  className="flex-1 bg-gray-50 text-gray-600 outline-none"
                />
              </div>
              <p className="text-xs text-gray-500 mt-1">Email cannot be changed</p>
            </div>

            {/* Name */}
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-2">Full Name</label>
              <input
                type="text"
                value={profile.name}
                onChange={(e) => handleProfileChange('name', e.target.value)}
                placeholder="Enter your full name"
                className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#F59E0B]"
              />
            </div>

            {/* Phone */}
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-2">Phone Number</label>
              <div className="flex items-center gap-3 px-4 py-3 border border-gray-300 rounded-lg focus-within:ring-2 focus-within:ring-[#F59E0B]">
                <Phone size={18} className="text-gray-400" />
                <input
                  type="tel"
                  value={profile.phone || ''}
                  onChange={(e) => handleProfileChange('phone', e.target.value)}
                  placeholder="Enter phone number"
                  className="flex-1 bg-transparent outline-none"
                />
              </div>
            </div>

            {/* Save Button */}
            <button
              onClick={saveProfile}
              disabled={saving}
              className="w-full bg-[#F59E0B] hover:bg-[#F59E0B]/90 disabled:bg-gray-300 text-white font-medium py-3 rounded-lg transition-colors flex items-center justify-center gap-2"
            >
              <Save size={18} />
              {saving ? 'Saving...' : 'Save Profile'}
            </button>
          </div>
        )}
      </div>

      {/* Bank Details Section */}
      <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
        <h2 className="text-xl font-semibold text-[#1F4E5F] mb-6 flex items-center gap-2">
          <DollarSign size={20} />
          Banking Information
        </h2>

        <p className="text-sm text-gray-600 mb-6">
          Add your banking details to receive profit share payments automatically.
        </p>

        <div className="space-y-6">
          {/* Account Holder */}
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-2">Account Holder Name</label>
            <input
              type="text"
              value={bankDetails.account_holder}
              onChange={(e) => handleBankDetailsChange('account_holder', e.target.value)}
              placeholder="Full name as it appears on bank account"
              className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#F59E0B]"
            />
          </div>

          {/* Bank Name */}
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-2">Bank Name</label>
            <div className="flex items-center gap-3 px-4 py-3 border border-gray-300 rounded-lg focus-within:ring-2 focus-within:ring-[#F59E0B]">
              <Building2 size={18} className="text-gray-400" />
              <input
                type="text"
                value={bankDetails.bank_name}
                onChange={(e) => handleBankDetailsChange('bank_name', e.target.value)}
                placeholder="e.g. Bank Mandiri, BCA, BNI"
                className="flex-1 bg-transparent outline-none"
              />
            </div>
          </div>

          {/* Account Number */}
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-2">Account Number</label>
            <input
              type="text"
              value={bankDetails.account_number}
              onChange={(e) => handleBankDetailsChange('account_number', e.target.value)}
              placeholder="Your bank account number"
              className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#F59E0B] font-mono"
            />
          </div>

          {/* Routing Number (Optional) */}
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-2">Routing Number (Optional)</label>
            <input
              type="text"
              value={bankDetails.routing_number || ''}
              onChange={(e) => handleBankDetailsChange('routing_number', e.target.value)}
              placeholder="Bank routing number if applicable"
              className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#F59E0B] font-mono"
            />
          </div>

          {/* Save Button */}
          <button
            onClick={saveBankDetails}
            disabled={saving}
            className="w-full bg-[#F59E0B] hover:bg-[#F59E0B]/90 disabled:bg-gray-300 text-white font-medium py-3 rounded-lg transition-colors flex items-center justify-center gap-2"
          >
            <Save size={18} />
            {saving ? 'Saving...' : 'Save Banking Details'}
          </button>
        </div>
      </div>

      {/* Security Note */}
      <div className="bg-blue-50 border border-blue-200 rounded-xl p-6">
        <h3 className="font-semibold text-blue-900 mb-2">Security Notice</h3>
        <ul className="text-sm text-blue-800 space-y-2">
          <li>✓ Your banking information is encrypted and stored securely</li>
          <li>✓ Only authorized administrators can access your payment details</li>
          <li>✓ Payments are processed automatically on a monthly basis</li>
          <li>✓ You will receive a confirmation email for each transfer</li>
        </ul>
      </div>
    </div>
  );
}
