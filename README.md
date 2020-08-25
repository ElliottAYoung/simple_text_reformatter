# SimpleTextReformatter

This was a gem I created to be a pure ruby way of __very__ simple reformatting of text, I built it so I could use it in a different project, but feel free to use it wherever you want.

## Usage

As I need them I will continue to add more reformat types to this gem, but for now it does an extremely simple phone number reformatting. To use this you just need to call:

```
SimpleTextReformatter.format_as_phone_number('1234567890')
```

This follows a few basic rules:
* The Phone Number will reformat to `(123) 456-7890`
* If a region code (really just '1' for now) is passed in it will get chopped off: `"11234567890" => "(123) 456-7890"`
* Any additional numbers passed after will be included as an extension: `"12345678901234" => "(123) 456-7890 x1234" `
* Any nondigits passed in will be excluded
