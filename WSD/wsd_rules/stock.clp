
(defrule stock0
(declare (salience 5000))
(id-root ?id stock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id stocking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mojA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  stock.clp  	stock0   "  ?id "  mojA )" crlf))
)

;"stocking","N","1.mojA"
;A pair of stockings when worn in winter prevents you from extreme cold.
;
(defrule stock1
(declare (salience 4900))
(id-root ?id stock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarapUra_mAwrA_meM_raKA_jAne_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stock.clp 	stock1   "  ?id "  BarapUra_mAwrA_meM_raKA_jAne_vAlA )" crlf))
)

;"stock","Adj","1.BarapUra_mAwrA_meM_raKA_jAne_vAlA"
;The shopkeeper keeps bread as one of his stock items.
;
(defrule stock2
(declare (salience 4800))
(id-root ?id stock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wijZArawI_mAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stock.clp 	stock2   "  ?id "  wijZArawI_mAla )" crlf))
)

;"stock","N","1.wijZArawI_mAla"
;The shop has a stock of good quality rice.
;--"2.paSu_Xana"
;Our ancestors had a big cattle stock in the village.
;--"3.pUzjZI"
;His mother gave him all her stock so that he could start his business well.
;--"4.pIDZI"
;She comes from an English business stock.
;--"5.KyAwi"
;He possesses a good stock in other people's mind.
;--"6.haddiyoM_se_banAyA_jAne_vAlA_paxArWa"
;Chicken stock enhances the taste of chicken soup.
;--"7.wanA"
;It's difficult to support the stock of the gun on your shoulder.
;
;LEVEL 
;
;
;Headword : stock
;
;Examples :
;
;1. Our new stock of winter wear will not come for another month.
;   sarxiyoM ke kapadZoM kA hamArA 'mAla' aBI eka mahIne Ora nahIM AegA.
;
;2. Stationary is kept in the stock room.
;   steSanarI 'BaMdAra' gqha meM raKI hE.
;
;3. He has bought some new breeding stock.
;   usane aBI kuCa nayI  'paSuXana' KarIxA hE.
;
;4. He comes from Irish stock.
;   vaha AiriSa 'vaMSa' kA hE.
;
;5. His stock is high.
;   usakA 'praBAva' UzcA hE.
;
;6. The restaurant  serves soup cooked with chicken stock.
;   restorEMta murge ke 'Sorabe{sAra}' se banAyA sUpa xewA hE.
;
;7. He set the stock of his rifle onto his shoulder.
;   usane apanI banxUka kA 'kunxA' apane kaMXe para raKA.
;
;8. plant stocks
;   pedZoM ke skaMXa
;
;
;                     pedZa_kA_wanA
;                        |
;            ----------------------------------
;           |                                 |
;       AXAra                                sAra-saMgraha
;        |                                   / \
;    baMxUka kA kunxA                        /   \
;                                         /       \
;                                       sAra       saMgraha
;                                        |          |
;                                      cikina      sAmAna kA BaMdAra
;
;sUwra : BaMdAra[<pedZa_kA_wanA]
;
;PREVIOUS	HEAD	EXAMPLES
;
