xquery version "1.0";


<html>
<body>

<h1>Bookstore</h1>

<ul>
{
for $x in doc("https://korantes1.github.io/hw8.xml")/bookstore/book
where $x/price<30
order by $x/title
return <li>{$x/title}</li>
}
</ul>

</body>
</html>