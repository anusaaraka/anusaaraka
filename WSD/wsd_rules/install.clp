;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (prachirathore02@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################
;;@@@   ---Added by Prachi Rathore
;  She has installed a couple of young academics as her advisers.[oald]
;वह पदारूढ कर चुकी है कुछ उच्च श्रेणी के शिक्षको को उसके सलाहकारों के रूप मे   . 
(defrule install0
(declare (salience 5000))
(id-root ?id install)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-as_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxArUDa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  install.clp 	install0   "  ?id "  paxArUDa_kara )" crlf))
)

;;@@@   ---Added by Prachi Rathore
; We installed ourselves in the front row.[oald]
;हम सामने की पंक्ति में हम स्वंय जम गये .  
(defrule install1
(declare (salience 5000))
(id-root ?id install)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jama_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  install.clp 	install1   "  ?id "  jama_jA )" crlf))
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;;@@@   ---Added by Prachi Rathore
; The hotel chain has recently installed a new booking system.[oald]
;होटल श्रृङ्खला एक नयी बुकिंग व्यवस्था हाल मेँ संस्थापना कर चुकी है . 
(defrule install3
(declare (salience 4000))
(id-root ?id install)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMsWApanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  install.clp 	install3   "  ?id "  saMsWApanA_kara )" crlf))
)
