xquery version "1.0";
for $x in doc("loaners.xml")/microloans/loaner
return
<loanerDebt name="{$x/name/first}">
	{sum($x/loan/amount)-sum($x/loan/repayment/@amount)}
</loanerDebt>
