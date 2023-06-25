using Godot;
using System;

public partial class Icon : Sprite2D
{
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
		this.MoveLocalX(1, true);

		Move( y: 2 );
		
	}

	void Move( int x, bool interpolation = false ){ //porusza po x 
	}

	void Move( int y ){ //porusza po x 
	}
}
