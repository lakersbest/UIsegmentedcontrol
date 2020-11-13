import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var lbMessage: UILabel!
    
    /* 頁面一載入就設定lbMessage的文字內容與顏色 */
    override func viewDidLoad() {
        super.viewDidLoad()
        setTextColor()
    }
    
    /* segmentedControl選項一改變就設定lbMessage的文字內容與顏色 */
    @IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        setTextColor()
    }

    /* 取得segmentedControl被選取項目的index來設定lbMessage的文字內容與顏色 */
    func setTextColor() {
        /* 依照被選取項目的index來決定lbMessage文字顏色 */
        let selectedIndex = segmentedControl.selectedSegmentIndex
        switch selectedIndex {
        case 0:
            lbMessage.textColor = UIColor.yellow
        case 1:
            lbMessage.textColor = UIColor.green
        case 2:
            lbMessage.textColor = UIColor.red
        default:
            break
        }
        /* 依照被選取項目的index來取得該選項文字，並顯示在lbMessage上 */
        lbMessage.text = segmentedControl.titleForSegment(at: selectedIndex)
    }
}


