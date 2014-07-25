;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 16-jan-2014
;My painting looks childish beside yours.[oald]
;तुम्हारे चिञ के आगे मेरा चिञ बच्चों जैसा लग रहा है
(defrule beside1
(declare (salience 4000))
(id-root ?id beside)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-beside_saMbanXI  ?id1 ?id2)
(id-word ?id2 yours|hers)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_Age))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beside.clp       beside1   "  ?id "  ke_Age )" crlf))
)


;***************************DEFAULT RULES***************************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 16-jan-2014
;He sat beside her all night.
;वह पूरी रात उसके पास बैठा
(defrule beside0
(declare (salience 0))
(id-root ?id beside)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beside.clp       beside0   "  ?id "  ke_pAsa )" crlf))
)


