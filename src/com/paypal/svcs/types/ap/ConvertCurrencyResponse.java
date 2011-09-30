
/**
 * Auto generated code
 */

package com.paypal.svcs.types.ap;

import com.paypal.svcs.types.ap.CurrencyConversionTable;
import com.paypal.svcs.types.common.ErrorData;
import com.paypal.svcs.types.common.ResponseEnvelope;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;


/**
 * A response that contains a table of estimated
 * converted currencies based on the Convert
 * Currency Request.
 */
public class ConvertCurrencyResponse {

	/**
	 *
	 * @Required
	 */
	private ResponseEnvelope responseEnvelope;
	public ResponseEnvelope getResponseEnvelope() {
		return responseEnvelope;
	}
	public void setResponseEnvelope(ResponseEnvelope value) {
		this.responseEnvelope = value;
	}

	/**
	 *
	 * @Required
	 */
	private CurrencyConversionTable estimatedAmountTable;
	public CurrencyConversionTable getEstimatedAmountTable() {
		return estimatedAmountTable;
	}
	public void setEstimatedAmountTable(CurrencyConversionTable value) {
		this.estimatedAmountTable = value;
	}

	/**
	 */
	private List<ErrorData> error = new ArrayList<ErrorData>();
	public List<ErrorData> getError() {
		return error;
	}
	public void setError(List<ErrorData> value) {
		this.error = value;
	}


	public ConvertCurrencyResponse() {
	}
	public ConvertCurrencyResponse(Map<String, String> map, String prefix) {
		if( map.containsKey(prefix + "responseEnvelope" + ".timestamp") ) {
			String newPrefix = prefix + "responseEnvelope" + '.';
			this.responseEnvelope =  new ResponseEnvelope(map, newPrefix);
		}
		if( map.containsKey(prefix + "estimatedAmountTable" + ".") ) {
			String newPrefix = prefix + "estimatedAmountTable" + '.';
			this.estimatedAmountTable =  new CurrencyConversionTable(map, newPrefix);
		}
		for(int i=0; i<10; i++) {
			if( map.containsKey(prefix + "error" + '(' + i + ')'+ ".errorId") ) {
				String newPrefix = prefix + "error" + '(' + i + ')' + '.';
				this.error.add(new ErrorData(map, newPrefix));
			}
		}
	}
}
