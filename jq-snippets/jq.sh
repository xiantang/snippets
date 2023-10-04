echo ' By default jq reads from *STDIN* a stream of JSON inputs (values). '
echo '
  "hello" 123 [
    "one",
    "two",
    "three"
  ]
  { "name": "jq" }
' |
	jq '.  # <-- the jq program here is the single dot (.), called the identity
        # operator, which stands for the current input.
'

echo 'ask jq to slurp them up as an array.'
echo '1 "two" 3' | jq -s .

echo "treat each line as a string."
# Don´t parse the input as JSON. Instead, each line of text is passed to the filter as a string. If combined with --slurp, then the entire input

(
	echo line 1
	echo line 2
) | jq -R .

echo '"hello"' >hello.json
jq . hello.json

# Don´t read any input at all. Instead, the filter is run once using null as the input.
# pass a string
jq -n --arg val 123 '$val'

# pass a json value
jq -n --argjson val 123 '$val'

# Using `--arg` or `--argjson` is an useful way of building JSON output from
# existing input.
jq -n --arg txt "$(
	date
	echo "have a nice day"
)" '{"today": $txt}'

jq -rn '"1+2=\(1+2)"'
