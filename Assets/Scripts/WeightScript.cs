using UnityEngine;

public class WeightScript : MonoBehaviour
{
	public float distancedromchild = 0.1f;

	public void ConnectRopeEnd(Rigidbody2D endrb)
	{
		HingeJoint2D hingeJoint2D = base.gameObject.AddComponent<HingeJoint2D>();
		hingeJoint2D.connectedBody = endrb;
		hingeJoint2D.autoConfigureConnectedAnchor = false;
		hingeJoint2D.anchor = Vector3.zero;
		hingeJoint2D.connectedAnchor = new Vector2(0f, 0f - distancedromchild);
	}
}
