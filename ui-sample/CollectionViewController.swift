//
//  UICollectionViewController.swift
//  ui-sample
//
//  Created by Yuki Kuboyama on 2019/10/20.
//  Copyright © 2019 Yuki Kuboyama. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {
    
    let prefacture = ["東京", "大阪", "北海道", "沖縄", "兵庫", "福岡", "大分", "宮崎", "長崎", "佐賀", "熊本", "宮崎", "鹿児島"]

    @IBOutlet private weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "CollectionViewCell", bundle: Bundle.main)
        collectionView.register(nib, forCellWithReuseIdentifier: "collectionViewCell")
        
        // レイアウト設定
//        let layout = UICollectionViewFlowLayout()
//        let width: CGFloat = UIScreen.main.bounds.width / 2
//        let height = 44
//        layout.itemSize = CGSize(width: width, height: height)
//        collectionView.collectionViewLayout = layout
        
        collectionView.delegate = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension CollectionViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // セクションの数を返す
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // セクション毎の行数を返す
        return prefacture.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! CollectionViewCell
//        cell.backgroundColor = UIColor.black
        
        cell.setTitleLabel(title: prefacture[indexPath.row])
        return cell
    }
    
    
}

extension CollectionViewController: UICollectionViewDelegate {
    
}

extension CollectionViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // 例えば端末サイズの半分の width と height にして 2 列にする場合
        let width: CGFloat = self.collectionView.bounds.width / 2
//        let height = width
        return CGSize(width: width, height: 44)
    }
}
