package org.mayocat.rest.jackson;

import java.io.IOException;
import java.util.Locale;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.google.common.base.Strings;

/**
 * @version $Id$
 */
public class LocaleBCP47LanguageTagDeserializer extends JsonDeserializer<Locale>
{
    @Override
    public Locale deserialize(JsonParser jsonParser, DeserializationContext deserializationContext)
            throws IOException, JsonProcessingException
    {
        String str = jsonParser.getText().trim();
        if (Strings.isNullOrEmpty(str)) {
            return null;
        }

        return Locale.forLanguageTag(str);
    }
}
