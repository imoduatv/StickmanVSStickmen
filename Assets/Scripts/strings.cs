using UnityEngine;

public class strings : MonoBehaviour
{
	private LineRenderer lineRenderer;

	private HingeJoint2D hinge;

	private void Start()
	{
		lineRenderer = GetComponent<LineRenderer>();
		hinge = GetComponent<HingeJoint2D>();
		lineRenderer.SetPosition(0, base.transform.localPosition);
		lineRenderer.SetPosition(1, hinge.connectedBody.transform.localPosition);
	}

	private void Update()
	{
	}
}
