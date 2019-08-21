using UnityEngine;

public class DetectButton : MonoBehaviour
{
	public Transform Cursor;

	private void Update()
	{
		RaycastHit hitInfo;
		if (Input.GetMouseButton(0) && Physics.Raycast(Camera.main.ScreenPointToRay(UnityEngine.Input.mousePosition), out hitInfo) && hitInfo.collider.name.Contains("Shoot"))
		{
			Cursor.position = Camera.main.ScreenToWorldPoint(UnityEngine.Input.mousePosition) + new Vector3(0f, 0f, 10f);
		}
	}
}
