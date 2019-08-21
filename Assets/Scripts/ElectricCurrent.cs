using UnityEngine;
using UnityEngine.SceneManagement;

public class ElectricCurrent : MonoBehaviour
{
	public GameObject Electriceffect;

	private void OnTriggerEnter2D(Collider2D incoming)
	{
		if (incoming.name.Contains("Trigger"))
		{
			Electriceffect.SetActive(value: false);
			if (SceneManager.GetActiveScene().buildIndex - 2 == 26)
			{
				UnityEngine.Object.Destroy(InGameUI.instance.help);
			}
		}
	}
}
