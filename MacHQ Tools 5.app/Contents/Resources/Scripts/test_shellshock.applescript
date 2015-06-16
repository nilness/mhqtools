set test_1 to "
#!/bin/bash

EXPLOIT_1=`env x='() { :;}; echo vulnerable' bash -c \"echo this is a test\"`
if [ \"${EXPLOIT_1}\" = \"vulnerable\" ]; then
    echo \"Test 1 (CVE-2014-6271):	**** Machine appears to be vulnerable ****\"
else
    echo \"Test 1 (CVE-2014-6271):	Machine doesn't appear to be vulnerable\"
fi
"
set test_2 to "
#!/bin/bash

EXPLOIT_2=`env X='() { (shellshocker.net)=>\\' bash -c \"echo date\"; cat echo; rm ./echo `
if [ \"${EXPLOIT_2}\" != \"date\" ]; then
    echo \"Test 2 (CVE-2014-7169):	**** Machine appears to be vulnerable ****\"
else
    echo \"Test 2 (CVE-2014-7169):	Machine doesn't appear to be vulnerable\"
fi
"
set test_3 to "
#!/bin/bash

EXPLOIT_3=`env X=' () { }; echo hello' bash -c 'date'`
if [ \"${EXPLOIT_3}\" = \"hello\" ]; then
    echo \"Test 3 (CVE-??):	**** Machine appears to be vulnerable ****\"
else
    echo \"Test 3 (CVE-??):	Machine doesn't appear to be vulnerable\"
fi

"

set test_4 to "
#!/bin/bash

EXPLOIT_4=`bash -c 'true <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF' || echo \"CVE-2014-7186 vulnerable, redir_stack\"`
if [ \"${EXPLOIT_4}\" = \"CVE-2014-7186 vulnerable, redir_stack\" ]; then
    echo \"Test 4 (CVE-2014-7186):	**** Machine appears to be vulnerable ****\"
else
    echo \"Test 4 (CVE-2014-7186):	Machine doesn't appear to be vulnerable\"
fi

"

set test_5 to "
#!/bin/bash

EXPLOIT_5=`(for x in {1..200} ; do echo \"for x$x in ; do :\"; done; for x in {1..200} ; do echo done ; done) | bash || echo \"CVE-2014-7187 vulnerable, word_lineno\"`
if [ \"${EXPLOIT_5}\" = \"CVE-2014-7187 vulnerable, word_lineno\" ]; then
    echo \"Test 5 (CVE-2014-7187):	**** Machine appears to be vulnerable ****\"
else
    echo \"Test 5 (CVE-2014-7187):	Machine doesn't appear to be vulnerable\"
fi

"
set test_6 to "
#!/bin/bash

EXPLOIT_6=`shellshocker='() { echo You are vulnerable; }' bash -c shellshocker`
if [ \"${EXPLOIT_6}\" = \"You are vulnerable\" ]; then
    echo \"Test 6 (CVE-2014-6278):	**** Machine appears to be vulnerable ****\"
else
    echo \"Test 6 (CVE-2014-6278):	Machine doesn't appear to be vulnerable\"
fi

"
set test_7 to "
#!/bin/bash

EXPLOIT_7=`bash -c \"f() { x() { _;}; x() { _;} <<a; }\" 2>/dev/null || echo vulnerable`
if [ \"${EXPLOIT_7}\" = \"vulnerable\" ]; then
    echo \"Test 7 (CVE-2014-6277):	**** Machine appears to be vulnerable ****\"
else
    echo \"Test 7 (CVE-2014-6277):	Machine doesn't appear to be vulnerable\"
fi

"


set result_1 to do shell script test_1
set result_2 to do shell script test_2
set result_3 to do shell script test_3
set result_4 to do shell script test_4
set result_5 to do shell script test_5
set result_6 to do shell script test_6
set result_7 to do shell script test_7

try
	display dialog result_1 & return & result_2 & return & result_3 & return & result_4 & return & result_6 & return & result_6 & return & result_7 & return buttons {"OK"}
end try
