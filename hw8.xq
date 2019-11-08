xquery version "1.0";


<html>
<body>

<h1>Bookstore</h1>

<ul>
{
for $x in doc("hw8.xml")/bookstore/book
where $x/price<30
order by $x/title
return <li>{$x/title}</li>
}
</ul>

</body>
</html>