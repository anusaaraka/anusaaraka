
(defrule piece0
(declare (salience 5000))
(id-root ?id piece)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
;(or(viSeRya-det_viSeRaNa ?id ?id1)(viSeRya-viSeRaNa ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tukadA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  piece.clp 	piece0   "  ?id "  tukadA )" crlf))
)

(defrule piece1
(declare (salience 5500))
(id-root ?id piece)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
;(id-root ?id2 workmanship|art|music)
;(id-root =(- ?id 1) beautiful|excellent)
;(viSeRya-viSeRana ?id  =(- ?id 1))
;(viSeRya-of_viSeRana ?id ?id2)
(subject-subject_samAnAXikaraNa  ?id1  ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalAkqwi));Modified 'kalAkquwi to kalAkqwi' by Roja as Suggested by Chaitanya Sir(20-07-12)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  piece.clp    piece1   "  ?id "   kalAkqwi )" crlf))
)

;"piece","N","1.tukadA"
;The sofa is delivered in pieces && we have to assemble it.
;--"2.eka_seta_meM_se_pqWaka"
;A piece of the Tea set is missing.
;--"3.racanA"
;Leonardo da vince's monalisa is his master piece.
;--"4.hissA"
;
(defrule piece2
(declare (salience 4900))
(id-root ?id piece)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  piece.clp 	piece2   "  ?id "  joda )" crlf))
)

;"piece","V","1.jodanA"
;The'Diary of a young girl' by Anne Frank has been pieced together from her personal diary.
;--"2.jodakara_banA_lenA"
;I pieced together the parts of broken vase.
;
;Headword : piece
;
;Examples --
;1.The glass broke into a thousand pieces.
;gilAsa hajZAra tukado meM tUta gayA.
;2.The teacher wrote with the last piece of chalk.
;SikRaka ne KadZiye ke anwima tukade se liKA.
;3.He ate up the last piece of the bread. 
;vaha pAva kA AKarI tukadA KA gayA.
;4.She bought a six-piece dinner set.
;usane CaH nagoM kA Bojana seta KarIxA.
;5.There are two pieces missing on this chess board.
;isa SawaraMjI para xo mohare nahIM hEM.
;6.It is an excellent piece of work in literature.
;yaha sAhiwyika kArya kI eka SreRTa kqwi hE.
;
;
;vAkya	piece Sabxa kA arWa	
; 1-3	   tukadZA
;  4	   naga
;  5	   mohare
;  6	   kqwi  naga
;
;
;anwarnihiwa sUwra
;     kisI eka cIja kA hissA hE wo vaha tukadZA hE.
;     kinwu samuccaya kA hissA hE wo vaha naga hE jEse Parnicara, dinara seta Axi.
;     kalAkAra kI aneka kqwiyoM meM se eka  eka kalAkqwi  kalA kA eka naga
;     SawaraMja ke aneka moharoM meM se eka moharA  naga??
;
;sUwra : tukadZA^naga


;@@@ Added by Sonam Gupta MTech IT Banasthali 3-1-2014
;A useful piece of equipment.  [Cambridge]
;उपकरण का एक उपयोगी पुर्जा . 
(defrule piece3
(declare (salience 5500))
(id-root ?id piece)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 equipment|machine|machinery)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id purjA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  piece.clp 	piece3   "  ?id "  purjA )" crlf))
)




;@@@ Added by Sonam Gupta MTech IT Banasthali 3-1-2014
;There was an interesting piece on alternative medicine in the paper yesterday.   [Cambridge]
;कल लेखपत्र में वैकल्पिक चिकित्सा पर रोचक लेख था . 
(defrule piece4
(declare (salience 5500))
(id-root ?id piece)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-on_saMbanXI  ?id ?)(viSeRya-RaRTI_viSeRaNa  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id leKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  piece.clp 	piece4   "  ?id "  leKa )" crlf))
)




;@@@ Added by Sonam Gupta MTech IT Banasthali 3-1-2014
;She lives down the road a piece from here.  [OALD]
;वह यहाँ से दूर सङक के नीचे की ओर रहती है . 
(defrule piece5
(declare (salience 5500))
(id-root ?id piece)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 road)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  piece.clp 	piece5   "  ?id "  xUra )" crlf))
)
