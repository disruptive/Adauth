module Adauth
    
    # Inherits from Adtools::Config
    class Config < Adtools::Config
        attr_accessor   :allowed_groups, :denied_groups, :ad_sv_attrs, :ad_mv_attrs, :allowed_ous, :denied_ous, :ad_sv_group_attrs, :ad_mv_group_attrs,
                        :adtools
        
        def initialize
            super
            @adtools = true
            @allowed_groups = []
            @denied_groups = []
            @allowed_ous = []
            @denied_ous = []
            @ad_sv_attrs = {}
            @ad_mv_attrs = {}
            @ad_sv_group_attrs = {}
            @ad_mv_group_attrs = {}
        end
    end
end