
(defrule bed0
(declare (salience 5000))
(id-root ?id bed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id biswara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bed.clp 	bed0   "  ?id "  biswara )" crlf))
)

(defrule bed1
(declare (salience 4900))
(id-root ?id bed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id biTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bed.clp 	bed1   "  ?id "  biTA )" crlf))
)

;default_sense && category=verb	rAwa_ko_SaraNa_xe	0
;"bed","VT","1.rAwa_ko_SaraNa_xenA"
;The inn keeper could bed all the new arrivals.
;--"2.pOXA_lagAnA"
;The gardener bedded the roots in the compost.
;--"3.saMBoga_karanA"
;He has bedded many girls.
;
;LEVEL 
;
;
;Headword :  bed 
;
;Examples --
;
;"bed","N","1.biCOnA"
;He sat on the edge of the bed.
;vaha biCOne ke kinAre bETA WA.
;--"2.kyArI"
;The gardener watered the bed of roses.
;mAlI ne gulAboM kI kyAriyoM ko pAnI xiyA.
;--"3.wala"
;He searched for treasure on the ocean bed.
;usane KajZAne ke liye samuxra wala para DuzDAI kI. 
;--"4.AXAra"
;The railway tracks are laid on a bed of stones.
;pawWaroM ke AXAra para rela lAina dAlI gayI hE.
;
;"bed","VT","1.rAwa_ko_SaraNa_xenA"
;The inn keeper could bed all the new arrivals.
;sarAyavAlA saBI naye AgaMwukoM ko rAwa kI SaraNa xe sakA.
;--"2.pOXA_lagAnA"
;The gardener bedded the roots in the compost.
;mAlI ne jadZoM ko KAxa meM lagAyA
;--"3.saMBoga_karanA"
;He has bedded many girls.
;usane bahuwa sI ladZakiyoM ke sAWa saMBoga kiyA hE.
;
;SEyA--sawaha{jisapara litAyA yA biTAyA jA sake}(ocean bed)-waha(stoen bed)-kyArI(rose bed)
;|
;|----SEyA para honevAle kAma
;                    |
;           ------------------
;          |         |        |
;         sonA     saMBoga_karanA  pOXa lagAnA
;
;
;sUwra : SEyA`[_>kyArI]
;
;
