
(defrule prospect0
(declare (salience 5000))
(id-root ?id prospect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AsAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prospect.clp 	prospect0   "  ?id "  AsAra )" crlf))
)

(defrule prospect1
(declare (salience 4900))
(id-root ?id prospect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KojZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prospect.clp 	prospect1   "  ?id "  KojZa )" crlf))
)

;"prospect","V","1.KojZanA"
;Some villagers are prospecting the wild animals in the hill areas.
;
;LEVEL 
;Headword : prospect
;
;Examples --
;
;1. These days there is no prospect in a theatrical career.
;ina xinoM nAtaka ke peRe meM koI BaviRya nahIM hE.
;2. Climbing mountains is an exciting prospect.
;parvawa caDZanA eka uwwejanIya praswAva hE.
;3. He is a good prospect for the Indian Cricket team.
;BArawIya kriketa tIma ke lie vaha eka acCA praswAva hE.
;4. I saw a magnificent prospect of the lake covered with lush trees.
;mEMne pedZo se DazkI huI JIla kA Bavya xqRya xeKA.
;5. The company is prospecting for aluminium in this area.
;yaha kaMpanI isa kRewra meM alumIniyama ke Kanija BaMdAroM kA pawA lagA rahI hE.
;
;
;vAkya 1. meM "prospect" kA arWa BaviRya, arWAw, saMBAviwa BaviRya EsA A rahA hE.
;vAkya 2. Ora 3. meM "prospect" kA arWa "praswAva" EsA A rahA hE.
;vAkya 4. meM "prospect" kA arWa "xqSya" EsA A rahA hE.
;
;uparaliKiwa vAkyoM meM "prospect" ke jo Binna arWa A rahe hEM, unameM saMbaMXa hama isa 
;prakAra xiKA sakawe hEM.
;
;vAkya 1 -3 meM "prospect" ke A rahe wInoM arWoM meM jo samAna BAva A rahA hE, vaha hE
;"AsAra" kA. yaxi uparaliKiwa 1 - 3 vAkyoM meM A rahe, "prospect" Sabxa ke, arWoM kA 
;arWa viswraNa kiyA jAe wo ina saMxarBoM meM "prospect" kA arWa "AsAra" le sakaweM hEM.
;vAkya 4 meM "prospect" kA arWa "xqSya" A rahA hE.
;
;Ora vAkya 5 meM "prospect" kA kriyA rUpo meM "pUrvekRaNa_karanA" EsA arWa A rahA 
;hE. 
;vAkya 1 - 5 meM "prospect" ke jo BI arWa A rahe hEM, una saBI arWoM kA mUlArWa 
;"pUrvekRaNa" hE.
;
;anwarnihiwa sUwra ;
;
;pUrvekRaNa - AsAra - BaviRya, praswAva
;
;wo aba hama "prospect" ke lie sUwra isa prakAra xe sakawawe hEM.
;
;sUwra : pUrvekRaNa^AsAra^xqSya
