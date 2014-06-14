;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
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

;@@@ Added by Pramila(Banasthali University) on 20-01-2014
;I was simply dumbed by the news.       ;shiksharthi
;मैं समाचार से बस हक्का-बक्का रह गया.
;meaning changed from "hakkA-bakkA_raha_jA" to"hakkA-bakkA_raha"  on 01-02-2014
(defrule dumb0
(declare (salience 5000))
(id-root ?id dumb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hakkA-bakkA_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dumb.clp 	dumb0   "  ?id "  hakkA-bakkA_raha )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 20-01-2014
;He is deaf and dumb.       ;shiksharthi
;वह गूँगा और बहरा है.
(defrule dumb1
(declare (salience 5000))
(id-root ?id dumb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dumb.clp 	dumb1   "  ?id " baharA )" crlf))
)

;We were struck dumb by the news.            ;shiksharthi
;हम इस समाचार से अवाक् रह गए. 
;(defrule dumb2
;(declare (salience 5000))
;(id-root ?id dumb)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id adjective)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id avAk))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dumb.clp 	dumb2   "  ?id "  avAk )" crlf))
;)

;-------------------------------default rules------------------------------
;@@@ Added by Pramila(Banasthali University) on 20-01-2014
;The criminal remained dumb.        ;shiksharthi
;अपराधी मौन रहा.
(defrule dumb3
(declare (salience 4000))
(id-root ?id dumb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mOna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dumb.clp 	dumb3   "  ?id "  mOna )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 20-01-2014
;The advocate dumbed the witness.       ;shiksharthi
;अधिवक्ता ने गवाह को निरुत्तर कर दिया.     
(defrule dumb4
(declare (salience 0))
(id-root ?id dumb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niruwwara_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dumb.clp 	dumb4   "  ?id "  niruwwara_kara_xe )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 20-01-2014
(defrule dumb5
(declare (salience 0))
(id-root ?id dumb)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niruwwara_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dumb.clp 	dumb5   "  ?id "  niruwwara_kara_xe )" crlf))
)
