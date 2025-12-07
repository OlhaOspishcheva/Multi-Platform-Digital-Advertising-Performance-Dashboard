-- Added the columns adset_name, campaign_name, and media_source
WITH facebook_data AS (
    SELECT 
        f.ad_date,
        fc.campaign_name,
        fa.adset_name,
        f.spend,
        f.impressions,
        f.reach,
        f.clicks,
        f.leads,
        f.value,
        f.url_parameters,
        'Facebook' AS media_source
    FROM public.facebook_ads_basic_daily f
    LEFT JOIN public.facebook_adset fa ON f.adset_id = fa.adset_id
    LEFT JOIN public.facebook_campaign fc ON f.campaign_id = fc.campaign_id
    WHERE f.ad_date IS NOT NULL 
        AND fc.campaign_name IS NOT NULL 
        AND fa.adset_name IS NOT NULL
),
google_data AS (
    SELECT 
        ad_date,
        campaign_name,
        adset_name,
        spend,
        impressions,
        reach,
        clicks,
        leads,
        value,
        url_parameters,
        'Google' AS media_source
    FROM public.google_ads_basic_daily
    WHERE ad_date IS NOT NULL 
        AND campaign_name IS NOT NULL 
        AND adset_name IS NOT NULL
)
-- Data consolidation from both platforms
SELECT 
    ad_date,
    campaign_name,
    adset_name,
    spend,
    impressions,
    reach,
    clicks,
    leads,
    value,
    url_parameters,
    media_source
FROM facebook_data
UNION ALL
SELECT 
    ad_date,
    campaign_name,
    adset_name,
    spend,
    impressions,
    reach,
    clicks,
    leads,
    value,
    url_parameters,
    media_source
FROM google_data
ORDER BY ad_date DESC, media_source, campaign_name;

