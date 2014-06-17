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


;@@@ Added by Pramila(Banasthali University) on 07-01-2014
;He devised his house to his friend.         ;shiksharthi
;उसने अपना मकान अपने मित्र को दान कर दिया.
(defrule devise0
(declare (salience 5000))
(id-root ?id devise)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAna_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  devise.clp 	devise0   "  ?id "  xAna_kara_xe )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 07-01-2014
;He devised a way of avoiding payment of debt.         ;shiksharthi
;उसने ऋण के भुगतान से बचने का रास्ता निकाल लिया.
(defrule devise1
(declare (salience 5000))
(id-root ?id devise)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  devise.clp 	devise1   "  ?id "  nikAla_le )" crlf))
)

;---------------------------default rules----------------------
;@@@ Added by Pramila(Banasthali University) on 07-01-2014
;A new system has been devised to control traffic in the city.    ;oald
;शहर में यातायात को नियंत्रित करने के लिए एक नई प्रणाली सोच निकाल ली गई है.
(defrule devise2
(declare (salience 4000))
(id-root ?id devise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id soca_nikAla_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  devise.clp 	devise2   "  ?id "  soca_nikAla_le )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 07-01-2014
(defrule devise3
(id-root ?id devise)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id soca_nikAla_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  devise.clp 	devise3   "  ?id "  soca_nikAla_le)" crlf))
)
