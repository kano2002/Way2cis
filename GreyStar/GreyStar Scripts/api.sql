----------------------master-------------------------------------------------------------------------------------

begin
for c_regmst in (select * from SOAPP_REG_SUPPLIERS where REG_REQUEST_ID = :P5_REG_REQUEST_ID_SUP) loop
    SOAPP_SUPPLIERS_API.insert_row(
        p_id                        =>  c_regmst.ID,
        p_reg_request_id            =>  c_regmst.REG_REQUEST_ID,
        p_vendor_id                 =>   c_regmst.VENDOR_ID,
        p_exempt_flag               =>  c_regmst.EXEMPT_FLAG,
        p_requestor_id              =>  c_regmst.REQUESTOR_ID,
        p_status                    =>  c_regmst.STATUS,
        p_bu_id                     =>  c_regmst.BU_ID,
        p_ch_reg_request_id         =>  c_regmst.CH_REG_REQUEST_ID,
        p_priority                  =>  c_regmst.PRIORITY,
        p_supplier_category         =>  c_regmst.SUPPLIER_CATEGORY,
        p_country                   =>  c_regmst.COUNTRY,
        p_greystar_lob              =>  c_regmst.GREYSTAR_LOB,
        p_compliance_type           =>  c_regmst.COMPLIANCE_TYPE,
        p_bu_name                   =>  c_regmst.BU_NAME,
        p_team_member_title         =>  c_regmst.TEAM_MEMBER_TITLE,
        p_pay_group                 =>  c_regmst.PAY_GROUP,
        p_payment_terms             =>  c_regmst.PAYMENT_TERMS,
        p_invoice_currency          =>  c_regmst.INVOICE_CURRENCY,
        p_payment_currency          =>  c_regmst.PAYMENT_CURRENCY,
        p_requestor_name            =>  c_regmst.REQUESTOR_NAME,
        p_external_system           =>  c_regmst.EXTERNAL_SYSTEM,
        p_external_sys_identifier   =>  c_regmst.EXTERNAL_SYS_IDENTIFIER,
        p_vendor_code               =>  c_regmst.VENDOR_CODE,
        p_doc_type                  =>  c_regmst.DOC_TYPE,
        p_attribute2                =>  c_regmst.ATTRIBUTE2,
        p_attribute3                =>   c_regmst.ATTRIBUTE3,
        p_attribute4                =>  c_regmst.ATTRIBUTE4,
        p_attribute5                =>  c_regmst.ATTRIBUTE5,
        p_attribute6                =>  c_regmst.ATTRIBUTE6,
        p_attribute7                =>  c_regmst.ATTRIBUTE7,
        p_attribute8                =>  c_regmst.ATTRIBUTE8,
        p_attribute9                =>  c_regmst.ATTRIBUTE9,
        p_attribute10               =>  c_regmst.ATTRIBUTE10,
        p_inactive_date             =>   c_regmst.INACTIVE_DATE,   
        p_message                   =>  c_regmst.MESSAGE,
        p_source                    =>  c_regmst.SOURCE
    );
    end loop;
end;



------------------address--------------------------------------------------------------------------------------


begin
for c_regadd in (select * from soapp_reg_supplier_address where REG_REQUEST_ID = 10023) loop
    SOAPP_SUPPLIER_ADDRESS_API.insert_row(
        -- p_id                    => c_regadd.ID,                
        p_address_id            => c_regadd.ADDRESS_ID,        
        p_vendor_id             => c_regadd.VENDOR_ID,         
        p_profile_id            => c_regadd.PROFILE_ID,        
        p_reg_request_id        => c_regadd.REG_REQUEST_ID,    
        p_ch_reg_request_id     => c_regadd.CH_REG_REQUEST_ID, 
        p_vendor_site_id        => c_regadd.VENDOR_SITE_ID,    
        p_vendor_site_name      => c_regadd.VENDOR_SITE_NAME,  
        p_address_type          => c_regadd.ADDRESS_TYPE,      
        p_address1              => c_regadd.ADDRESS1,    
        p_address2              => c_regadd.ADDRESS2,    
        p_address3              => c_regadd.ADDRESS3,    
        p_address4              => c_regadd.ADDRESS4,    
        p_city                  => c_regadd.CITY,        
        p_county                => c_regadd.COUNTY,      
        p_state                 => c_regadd.STATE,       
        p_province              => c_regadd.PROVINCE,    
        p_postal_code           => c_regadd.POSTAL_CODE, 
        p_status                => c_regadd.STATUS,      
        p_attribute1            => c_regadd.ATTRIBUTE1,    
        p_attribute2            => c_regadd.ATTRIBUTE2,    
        p_attribute3            => c_regadd.ATTRIBUTE3,    
        p_attribute4            => c_regadd.ATTRIBUTE4,    
        p_attribute5            => c_regadd.ATTRIBUTE5,    
        p_attribute6            => c_regadd.ATTRIBUTE6,    
        p_attribute7            => c_regadd.ATTRIBUTE7,    
        p_attribute8            => c_regadd.ATTRIBUTE8,    
        p_attribute9            => c_regadd.ATTRIBUTE9,    
        p_attribute10           => c_regadd.ATTRIBUTE10,   
        p_country               => c_regadd.COUNTRY
    );
    end loop;
end;

-----------------------------------contact-----------------------------------------------------------


begin
for c_regcontact in (select * from SOAPP_REG_SUPPLIER_CONTACTS where REG_REQUEST_ID = :P5_REG_REQUEST_ID_SUP) loop
    SOAPP_REG_SUPPLIER_CONTACTS_API.insert_row(
        p_id                 => c_regcontact.ID,
        p_contact_id         => c_regcontact.CONTACT_ID,
        p_first_name         => c_regcontact.FIRST_NAME,
        p_last_name          => c_regcontact.LAST_NAME,
        p_email              => c_regcontact.PHONE,
        p_phone              => c_regcontact.PHONE,
        p_fax                => c_regcontact.FAX,
        p_language           => c_regcontact.LANGUAGE,
        p_primary_flag       => c_regcontact.PRIMARY_FLAG,
        p_contact_type       => c_regcontact.CONTACT_TYPE,
        p_vendor_id          => c_regcontact.VENDOR_ID,
        p_reg_request_id     => c_regcontact.REG_REQUEST_ID,
        p_ch_reg_request_i   => c_regcontact.CH_REG_REQUEST_ID,
        p_status             => c_regcontact.STATUS,
        p_attribute1         => c_regcontact.ATTRIBUTE1,
        p_attribute2         => c_regcontact.ATTRIBUTE2,
        p_attribute3         => c_regcontact.ATTRIBUTE3,
        p_attribute4         => c_regcontact.ATTRIBUTE4,
        p_attribute5         => c_regcontact.ATTRIBUTE5,
        p_attribute6         => c_regcontact.ATTRIBUTE6,
        p_attribute7         => c_regcontact.ATTRIBUTE7,
        p_attribute8         => c_regcontact.ATTRIBUTE8,
        p_attribute9         => c_regcontact.ATTRIBUTE9,
        p_attribute10        => c_regcontact.ATTRIBUTE10
    );
    end loop;
end;
       
-------------------profile-----------------------------------------------------------------------------------------------

begin
for c_regprofile in (select * from SOAPP_REG_SUPPLIER_PROFILES where REG_REQUEST_ID = :P5_REG_REQUEST_ID_SUP) loop
    SOAPP_SUPPLIER_PROFILES_API.insert_row(
        -- p_id                    =>  c_regprofile.ID,
        p_profile_id            =>  c_regprofile.PROFILE_ID,
        p_supplier_name         =>  c_regprofile.SUPPLIER_NAME,
        p_language              =>  c_regprofile.LANGUAGE,
        p_tax_reg_num           =>  c_regprofile.TAX_REG_NUM,
        p_email                 =>  c_regprofile.EMAIL,
        p_phone                 =>  c_regprofile.PHONE,
        p_website               =>  c_regprofile.WEBSITE,
        p_supplier_alt_name     =>  c_regprofile.SUPPLIER_ALT_NAME,
        p_vendor_id             =>  c_regprofile.VENDOR_ID,
        p_reg_request_id        =>  c_regprofile.REG_REQUEST_ID,
        p_ch_reg_request_id     =>  c_regprofile.CH_REG_REQUEST_ID,
        p_status                =>  c_regprofile.STATUS,
        p_attribute1            =>  c_regprofile.ATTRIBUTE1,
        p_attribute2            =>  c_regprofile.ATTRIBUTE2,
        p_attribute3            =>  c_regprofile.ATTRIBUTE3,
        p_attribute4            =>  c_regprofile.ATTRIBUTE4,
        p_attribute5            =>  c_regprofile.ATTRIBUTE5,
        p_attribute6            =>  c_regprofile.ATTRIBUTE6,
        p_attribute7            =>  c_regprofile.ATTRIBUTE7,
        p_attribute8            =>  c_regprofile.ATTRIBUTE8,
        p_attribute9            =>  c_regprofile.ATTRIBUTE9,
        p_attribute10           =>  c_regprofile.ATTRIBUTE10 
    );
    end loop;
end;
       
--------------------------------payment------------------------------------------------------------



begin
for c_regpayment in (select * from SOAPP_REG_SUPPLIER_PAYMENTS where REG_REQUEST_ID = :P5_REG_REQUEST_ID_SUP) loop
    SOAPP_SUPPLIER_PAYMENTS_API.insert_row(
        p_id                  =>  c_regpayment.ID,
        p_payment_id             =>  c_regpayment.PAYMENT_ID,
        p_profile_id             =>  c_regpayment.PROFILE_ID,
        p_invoice_currency       =>  c_regpayment.INVOICE_CURRENCY,
        p_payment_currency       =>  c_regpayment.PAYMENT_CURRENCY,
        p_bank_name              =>  c_regpayment.BANK_NAME,
        p_bank_acct_holder_name  =>  c_regpayment.BANK_ACCT_HOLDER_NAME,
        p_bank_acct_number       =>  c_regpayment.BANK_ACCT_NUMBER,
        p_remittance_email       =>  c_regpayment.REMITTANCE_EMAIL,
        p_payment_method         =>  c_regpayment.PAYMENT_METHOD,
        p_bank_routing_number    =>  c_regpayment.BANK_ROUTING_NUMBER,
        p_sort_code              =>  c_regpayment.SORT_CODE,
        p_iban                   =>  c_regpayment.IBAN,
        p_swift_code             =>  c_regpayment.SWIFT_CODE,
        p_bic_code               =>  c_regpayment.BIC_CODE,
        p_vendor_id              =>  c_regpayment.VENDOR_ID,
        p_reg_request_id         =>  c_regpayment.REG_REQUEST_ID,
        p_ch_reg_request_id      =>  c_regpayment.CH_REG_REQUEST_ID,
        p_status                 =>  c_regpayment.STATUS,
        p_attribute1             =>  c_regpayment.ATTRIBUTE1,
        p_attribute2             =>  c_regpayment.ATTRIBUTE2,
        p_attribute3             =>  c_regpayment.ATTRIBUTE3,
        p_attribute4             =>  c_regpayment.ATTRIBUTE4,
        p_attribute5             =>  c_regpayment.ATTRIBUTE5,
        p_attribute6             =>  c_regpayment.ATTRIBUTE6,
        p_attribute7             =>  c_regpayment.ATTRIBUTE7,
        p_attribute8             =>  c_regpayment.ATTRIBUTE8,
        p_attribute9             =>  c_regpayment.ATTRIBUTE9,
        p_attribute10            =>  c_regpayment.ATTRIBUTE10 
    );
    end loop;
end;
      
-------------------------------tax----------------------------------------------------------------

       
begin
for c_regtax in (select * from SOAPP_REG_SUPPLIER_TAX where REG_REQUEST_ID = :P5_REG_REQUEST_ID_SUP) loop
    soapp_reg_supplier_tax_api.insert_row(
         p_id                   => c_regtax.ID,
        p_tax_id                => c_regtax.TAX_ID,
        p_company_name          => c_regtax.COMPANY_NAME,
        p_tax_payer_id          => c_regtax.TAX_PAYER_ID,
        p_attachment_id         => c_regtax.ATTACHMENT_ID,
        p_country               => c_regtax.COUNTRY,
        p_vendor_id             => c_regtax.VENDOR_ID,
        p_reg_request_id        => c_regtax.REG_REQUEST_ID,
        p_ch_reg_request_id     => c_regtax.CH_REG_REQUEST_ID,
        p_status                => c_regtax.STATUS,   
        p_attribute1            => c_regtax.ATTRIBUTE1,
        p_attribute2            => c_regtax.ATTRIBUTE2,
        p_attribute3            => c_regtax.ATTRIBUTE3,
        p_attribute4            => c_regtax.ATTRIBUTE4,
        p_attribute5            => c_regtax.ATTRIBUTE5,
        p_attribute6            => c_regtax.ATTRIBUTE6,
        p_attribute7            => c_regtax.ATTRIBUTE7,
        p_attribute8            => c_regtax.ATTRIBUTE8,
        p_attribute9            => c_regtax.ATTRIBUTE9,
        p_attribute10           => c_regtax.ATTRIBUTE10
    );
    end loop;
end;
       
