// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.klystop.fitology.web;

import com.klystop.fitology.domain.Topping;
import com.klystop.fitology.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Topping, String> ApplicationConversionServiceFactoryBean.getToppingToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.klystop.fitology.domain.Topping, java.lang.String>() {
            public String convert(Topping topping) {
                return new StringBuilder().append(topping.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Topping> ApplicationConversionServiceFactoryBean.getIdToToppingConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.klystop.fitology.domain.Topping>() {
            public com.klystop.fitology.domain.Topping convert(java.lang.Long id) {
                return Topping.findTopping(id);
            }
        };
    }
    
    public Converter<String, Topping> ApplicationConversionServiceFactoryBean.getStringToToppingConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.klystop.fitology.domain.Topping>() {
            public com.klystop.fitology.domain.Topping convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Topping.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getToppingToStringConverter());
        registry.addConverter(getIdToToppingConverter());
        registry.addConverter(getStringToToppingConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
