using UnityEngine;

public class CatchPrincess : MonoBehaviour
{
	private void OnCollisionEnter2D(Collision2D incoming)
	{
		if (incoming.collider.tag.Contains("switch"))
		{
			incoming.gameObject.transform.GetChild(0).gameObject.SetActive(value: true);
			GameManager.instance.shootareadefault.GetComponent<Animator>().SetTrigger("move");
		}
		if (incoming.collider.tag.Contains("Cage"))
		{
			GameManager.instance.shootarea1.SetActive(value: true);
			UnityEngine.Object.Destroy(incoming.gameObject);
			UnityEngine.Object.Destroy(GameManager.instance.Princess);
			GameEvents.OnGameOver(null, null);
			InGameUI.instance.fail_ad_bool = true;
		}
		if (incoming.collider.tag.Contains("Obstacle"))
		{
			incoming.gameObject.GetComponent<Cutter>().Charge = true;
		}
	}
}
