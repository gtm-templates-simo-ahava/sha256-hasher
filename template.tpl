___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "categories": ["UTILITY"],
  "__wm": "VGVtcGxhdGUtQXV0aG9yX3NoYTI1Nkhhc2hlci1TaW1vLUFoYXZh",
  "displayName": "sha256 Hasher",
  "description": "Use this variable to hash any input value with SHA256.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "input",
    "displayName": "Value to hash",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "RADIO",
    "name": "encoding",
    "displayName": "Output encoding",
    "radioItems": [
      {
        "value": "base64",
        "displayValue": "base64"
      },
      {
        "value": "hex",
        "displayValue": "hex"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "base64"
  }
]


___SANDBOXED_JS_FOR_SERVER___

const sha256Sync = require('sha256Sync');

if (!data.input){
  return undefined;
}

return sha256Sync(data.input, {outputEncoding: data.encoding});


___TESTS___

scenarios:
- name: Test on 12341123213
  code: |-
    const mockData = {
      input: "12341123213"
    };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isDefined();
- name: Test on empty string
  code: |-
    const mockData = {
      input: ""
    };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isUndefined();
- name: Test on undefined
  code: |-
    const mockData = {
      input: undefined
    };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isUndefined();
- name: Test without key
  code: |-
    const mockData = {
    };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isUndefined();


___NOTES___

Created on 11/02/2021, 10:52:38


