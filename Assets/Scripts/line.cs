using UnityEngine;

public class line : MonoBehaviour
{
	private LineRenderer lineRenderer;

	private void Start()
	{
		lineRenderer = GetComponent<LineRenderer>();
	}

	private void Update()
	{
		lineRenderer.SetPosition(0, base.transform.position);
		lineRenderer.SetPosition(1, new Vector3(10f, 0f, 0f));
	}
}
