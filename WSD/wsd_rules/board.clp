
(defrule board0
(declare (salience 5000))
(id-root ?id board)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Bojana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " board.clp	board0  "  ?id "  " ?id1 "  Bojana  )" crlf))
)

(defrule board1
(declare (salience 4900))
(id-root ?id board)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Bojana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " board.clp	board1  "  ?id "  " ?id1 "  Bojana  )" crlf))
)

(defrule board2
(declare (salience 4800))
(id-root ?id board)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 waKwe_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " board.clp	board2  "  ?id "  " ?id1 "  waKwe_lagA  )" crlf))
)

(defrule board3
(declare (salience 4700))
(id-root ?id board)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 waKwe_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " board.clp	board3  "  ?id "  " ?id1 "  waKwe_lagA  )" crlf))
)

(defrule board4
(declare (salience 4600))
(id-root ?id board)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 creak)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waKwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  board.clp 	board4   "  ?id "  waKwA )" crlf))
)

(defrule board5
(declare (salience 4500))
(id-root ?id board)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maMdala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  board.clp 	board5   "  ?id "  maMdala )" crlf))
)

(defrule board6
(declare (salience 4400))
(id-root ?id board)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 waKwe_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " board.clp	board6  "  ?id "  " ?id1 "  waKwe_lagA  )" crlf))
)

(defrule board7
(declare (salience 4300))
(id-root ?id board)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 waKwe_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " board.clp	board7  "  ?id "  " ?id1 "  waKwe_lagA  )" crlf))
)

(defrule board8
(declare (salience 4200))
(id-root ?id board)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  board.clp 	board8   "  ?id "  caDa )" crlf))
)

;default_sense && category=verb	caDZa	0
;"board","VT","1.caDZanA"
;Rahul boarded the plane for London.
;
;LEVEL 
;
;
;Headword : board
;
;Examples --
;
;nIce xiye gae vAkyoM meM "board" Sabxa kA alaga sanxarBoM meM alaga arWa ho rahA hE
;jEse :
;   1. waKwA
;   Use ply board for partitioning the room.
;   Gara kA viBAjana ke liye waKwoM kA iswemAla karanA.
;
;   2. patta
;   The teacher worked out a sum on the black board.
;   SikRaka SyAmapatta para gaNiwa kA eka praSna hala ki
;
;   3. borda
;   Caram is a board-game
;   kerema borda ke upara KelA jAwA hE
;
;   4. pariRaxa
;   Board of directors take the final decision regarding the development of the
;   company.
;   kaMpanI ke vArI meM pariRax ke bETaka para jo BI nirNaya liyA jAegA o anwima hogA.
;
;   5. caDZanA
;   To board in a running train is dangerious.
;   calawi hui trena para caDanA KawaranAka hE
;
;   6. vAsa_karanA
;   Boarding life at hostel is enjoyable.
;   CAwrAvAsI jIvana AnaMxaxAyaka hE
;   
;
;agara hama "board" kA arWa "waKwA yA patarA" le, wo vaha aXikawara vAkyoM ke sanxarBoM 
;meM uciwa ho sakawA hE.
;   jEse :
;   Use ply board for partitioning the room.
;   Gara kA viBAjana ke liye waKwe kA iswemAla karanA.
;   The teacher worked out a sum on the black board.
;   SikRaka SyAmapatta para gaNiwa kA eka praSna hala ki
;  
;   Caram is a board game
;   kerema patarA ke Upara KelA jAwA hE
;   
;   Board of directors take the final decision regarding the development of the
;   company.
;   kaMpanI ke bAre meM pariRax ke bETaka para jo BI nirNaya liyA jAegA 
;   vo anwima hogA.(bETaka meja ke Upara meja kA Upara yAnI patarA)       
;
;   To board in a running train is dangerous.
;   calawi hui trena para caDanA KawaranAka hE (trena para <-- trena kI sIDI <-- yAnI sIDI ke patarA para) 
;
;
;ina prayogoM ke awirikwa 'borda' Sabxa ke kuCa AlaMkArika-prayoga BI hEM
;
;
;AlaMkArika-prayoga meM vAkyoM ke AXAra para isakA viSleRaNa nimna prakAra se kiyA jA sakawA hE
;
;A.nirNaya
;1. KulA/niRpakRa (honest && open)
;   It will be good for company if the decision is above board.
;2. saba ko le kara - Across the board - (involving all)
;   Plant needs modernisation across the board.  
;   plAMta kA saMpUrNa AXunikIkaraNa karanA cAhiye.
;3. niyama ke anusAra - Go by the board - of plans/principles
;   You never get admission in the university directly, you have to go by the
;   board.
;
;B.lenA
;1. jimmevArI lenA
;   I am too busy to take a new job on board at the moment.
;   to accept a responsibility.
;      (jimmevArI apanI meja ke para (kAnXopara) raKanA)
;2. jIwa lenA Sweep the board
;   Australia swept the board in the last cricket World Cup. 
;
; above the board, across the board,go by the board
;   ...take something on board,swept the board
;
; nirNaya KulA maMca para,saba ko le kara,niyama ke anusAra
;   jimmevArI apanA borda pe raKanA
;
;ply board, notice board/black board, board-game,to board in, board of directors
;boarding,
;above the board, across the board,go by the board...take something on board,
;  swept the board
;
;
;sUwra : waKwA`[borda]
;
;
;
