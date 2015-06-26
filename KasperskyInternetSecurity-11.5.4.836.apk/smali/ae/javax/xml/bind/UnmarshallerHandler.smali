.class public interface abstract Lae/javax/xml/bind/UnmarshallerHandler;
.super Ljava/lang/Object;
.source "UnmarshallerHandler.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# virtual methods
.method public abstract getResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
