
(defrule note0
(declare (salience 5000))
(id-root ?id note)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id noted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id viKyAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  note.clp  	note0   "  ?id "  viKyAwa )" crlf))
)

;"noted","Adj","1.viKyAwa"
;M.S.Subbhalakshmi is a noted singer.
;
;
(defrule note1
(declare (salience 4900))
(id-root ?id note)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " note.clp	note1  "  ?id "  " ?id1 "  liKa  )" crlf))
)

;He noted down the whole story in five minutes.
;usane pUrI kahAnI pAzca minata meM liKa xI
(defrule note2
(declare (salience 4800))
(id-root ?id note)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tippaNI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  note.clp 	note2   "  ?id "  tippaNI )" crlf))
)

;"note","N","1.tippaNI"
;She took all the notes from her friend.
;--"2.citTI"
;Jim gave her a note for attending the party.
;--"3.svara"
;The singer held the note too long.
;--"4.nota"
;We gave him a hundred rupee note.
;--"5.tIkA"
;A brief note is given in the introduction of this book.
;--"6.XyAna"
;It was a performance worthy of note.
;
(defrule note3
(declare (salience 4700))
(id-root ?id note)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XyAna_se_xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  note.clp 	note3   "  ?id "  XyAna_se_xeKa )" crlf))
)

;"note","VT","1.XyAna_se_xeKanA"
;Take note of this chemical reaction.

;@@@ Added by Nandini
;Ann blew a few notes on the trumpet.
;ann ne wurahI para kuCa swara bajAe.
(defrule note4
(declare (salience 4850))
(id-root ?id note)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(id-root ?id1 blow)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id swara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  note.clp 	note4   "  ?id " swara )" crlf))
)


;LEVEL 
;
;
;Headword : note
;
;Examples --
;
;1.The use of" Note" in different meanings.
;
;yahAz hama "Note" kA "nota karane" ke arWa me le rahe hE.("kriyA")  
;uxAharaNa ke lie;
;
;"note","1.XyAna xenA"
;His performance was worthy of note.
;usakI axAkArI "XyAna xene" yogya WIM
;Please note his words.
;usakI bAwo ko "XyAna xoM"
;Did you note how dirty her hands were?
;kyA wumane usake mEle hAWoM para" XyAna xiyA?"
;
;--"2.XyAna_se_liKanA"
;He sat taking  notes of everything that was said.
;vaha bETa kara kahI gayI sArI bAwoM ko "XyAna_se_liKane" lagA.
;Make a note of the dates of the examination.
;parIkRA ke wiWiyo ko "XyAna_se_liKo" .
;
;"note","N"1.tippaNI"
;The movie ended on an optimistic note.
;Pilma kI samApwi ASAvAxI "tippaNI" ke rUpa meM huI.
;
;--"nota(rUpayA)"
;We only  exchange notes && traveller's cheques.
;hama sirPa yAwriyoM ke ceMka Ora "notoM" kI axalA- baxalI karawe hE.
;
;yahAz ina cAroM arWo meM eka mUla arWa sAmane AwA hEM,"
;
;"note <-----  kisI bAwa para XyAna xenA".wo isa ke AXAra para nota kA sUwra hogA,
;
;wo vAkyo kA anuvAxa kuCa Ese hogA. 
;
;1.vaha bETa kara kahI gayI sArI bAwoM para "XyAna xene" lagA.
;2.parIkRA ke wiWiyoM para "XyAna xo".
;3.usane apane riSawexAroM ko XanyavAxa kI citTI BejI.{unakA "XyAna raKawe hue"}
;4.Pilma kI samApwi ASAvAxI rUpa me huI.{"XyAna xene kI bAwa hE."}
;5.isa bAra usane kuCa alaga bAwoM para "XyAna xiyA WA."
;6.usakI axAkArI "XyAna xene" yogya WI.
;7.usakI bAwoM para "XyAna xo."
;8.kyA wumane usake mEle hAWoM para "XyAna xiyA."
;
;yahAz xo vAkyoM meM "XyAna xenA"nahIM bETa rahA hE,wo vahAz para eka nayA Sabxa raKa sakawe   hE "nota"jo saBI saMrxaBo meM ina kriyAo meM arWa ko banAe raKawA hE.
;
;9.usake gAneM ke pahale suro ko nota karawe hI unnahone vAhavAhI kI
;10.hama sirPa yAwriyoM ke ceMka Ora nota kI axalA- baxalI karawe hE.
;
;wo 'note' kA sUwra hogA
;
; sUwra : nota[<XyAna_xenA]
;
;
;
