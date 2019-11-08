xquery version "1.0";

let $books := (doc("hw8.xml")/bookstore/book)
return <table><tr><th>Title</th><th>Price</th></tr>
{
   for $x in $books   
   order by $x/price
   return <tr><td>{data($x/title)}</td><td>{data($x/price)}</td></tr>
}
</table>
</results>