import streamlit as st

name = st.text_input("Name")
if name:
    st.write(f"Hello {name}!")
