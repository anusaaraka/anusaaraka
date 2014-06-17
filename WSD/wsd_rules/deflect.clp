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


;@@@ Added by Pramila(Banasthali University)
;A compass needle is deflected by passing an electric current through a wire placed near the needle.
(defrule deflect0
(declare (salience 5000))
(id-root ?id deflect)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 electricity|current)
(kriyA-subject  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikRepiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deflect.clp 	deflect0   "  ?id "  vikRepiwa_kara )" crlf))
)


;@@@ Added by Pramila(Banasthali University)
;The road deflected near its end.
;The way deflects several times.

(defrule deflect1
(declare (salience 4900))
(id-root ?id deflect)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 road|way)
(or(kriyA-subject  ?id ?id1)(kriyA-object  ?id ?id2))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deflect.clp 	deflect1   "  ?id "  muda )" crlf))
)
;-------------------------------------------- Default rules  -----------------------------------------------
;@@@ Added by Pramila(Banasthali University)
(defrule deflect2
(declare (salience 4300))
(id-root ?id deflect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikRepiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deflect.clp 	deflect2   "  ?id "  vikRepiwa_kara )" crlf))
)


;@@@ Added by Pramila(Banasthali University)
(defrule deflect3
(declare (salience 4000))
(id-root ?id deflect)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hatA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deflect.clp 	deflect3   "  ?id "  hatA_xe )" crlf))
)
