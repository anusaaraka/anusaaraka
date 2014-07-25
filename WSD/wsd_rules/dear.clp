
(defrule dear0
(declare (salience 5000))
(id-root ?id dear)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-to_saMbanXI  ?id ?id1)                       ;$$$ condition added by Pramila(BU) on 10-12-2013
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id priya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dear.clp 	dear0   "  ?id "  priya )" crlf))
)

(defrule dear1
(declare (salience 4900))
(id-root ?id dear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id priya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dear.clp 	dear1   "  ?id "  priya )" crlf))
)


;@@@ added by pramila(BU) on 10-12-2013
;Now you can imagine how dear their animals are to them, and how precious.
;अब तुम सोच सकती हो, कि बकरियां इनको कितनी प्रिय हैं और इनके लिए कितने अमूल्‍य हैं।
(defrule dear2
(declare (salience 4900))
(id-root ?id dear)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-kriyA_viSeRaNa  ?id2 ?id1)
(kriyA-to_saMbanXI  ?id2 ?id3)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id priya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dear.clp 	dear2   "  ?id "  priya )" crlf))
)

;@@@ added by pramila(BU) on 10-12-2013
;Madhu lost everything that was dear to her.                ;sentence of this file
;maXu ko jo BI priya WA vaha saba usane Ko xiyA.
(defrule dear3
(declare (salience 5000))
(id-root ?id dear)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-to_saMbanXI  ?id ?id1)                       
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id priya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dear.clp 	dear3   "  ?id "  priya )" crlf))
)


;@@@ added by pramila(BU) on 10-12-2013
;Ravi is a very dear little boy.          ;sentence of this file
;ravi eka bahuwa pyArA CotA baccA hE.
(defrule dear4
(declare (salience 4000))
(id-root ?id dear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pyArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dear.clp 	dear4   "  ?id "  pyArA )" crlf))
)

;default_sense && category=noun	priya/lAdalA	0
;"dear","N","1.priya/lAdalA"
;
;
;LEVEL 
;Headword : dear
;
;Examples --
;
;"dear","Adj","1.priya"
;Her son was very dear to her.
;usako apanA betA bahuwa priya WA.
;Madhu lost everything that was dear to her.
;maXu ko jo BI priya WA vaha saba usane Ko xiyA.
;
;--"2.pyArA"
;Ravi is a very dear little boy.
;ravi eka bahuwa pyArA CotA baccA hE.
;
;"dear","Adv","1.mazhagA"    <---jisako kisI BI kImawa para KarIxA jAe .
;You should not buy dear && sell cheap.
;wumako mazhagA KarIxa kara saswA nahIM becanA cAhiye.
;--"2.bahumUlya"   <--mUlyavAna <--priya
;These books are very dear to me.
;ye puswakeM mere liye bahumUlya hEM.
;
;"dear","N","1.priya"
;Yes my dear.
;hAz priya
;
;sUwra : priya[>bahumUlya]
