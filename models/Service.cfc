

component accessors="true"
{
	property name="wirebox" inject="wirebox";
	property name="defaultRenderer";

	public any function init( )
	{
		return this;
	}

	public any function getDform( any renderer=getDefaultRenderer() )
	{
		var Dform = wirebox.getInstance("form@Dform");

		Dform.setRenderer( renderer );

		return Dform;
	}

	public any function getElement( required string type, struct context={}, any renderer=getDefaultRenderer() ) {

		var DformElement = new Element();
		DformElement.setRenderer( renderer );
		DformElement.setType( arguments.type );
		DformElement.setContext( arguments.context );

		return DformElement;
	}

}
