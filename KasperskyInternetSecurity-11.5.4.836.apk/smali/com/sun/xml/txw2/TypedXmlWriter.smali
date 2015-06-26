.class public interface abstract Lcom/sun/xml/txw2/TypedXmlWriter;
.super Ljava/lang/Object;
.source "TypedXmlWriter.java"


# virtual methods
.method public abstract _attribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract _attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract _attribute(Ljavax/xml/namespace/QName;Ljava/lang/Object;)V
.end method

.method public abstract _cast(Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/xml/txw2/TypedXmlWriter;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract _cdata(Ljava/lang/Object;)V
.end method

.method public abstract _comment(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract _element(Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/xml/txw2/TypedXmlWriter;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract _element(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/xml/txw2/TypedXmlWriter;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract _element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/xml/txw2/TypedXmlWriter;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract _element(Ljavax/xml/namespace/QName;Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/xml/txw2/TypedXmlWriter;",
            ">(",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract _namespace(Ljava/lang/String;)V
.end method

.method public abstract _namespace(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract _namespace(Ljava/lang/String;Z)V
.end method

.method public abstract _pcdata(Ljava/lang/Object;)V
.end method

.method public abstract block()V
.end method

.method public abstract commit()V
.end method

.method public abstract commit(Z)V
.end method

.method public abstract getDocument()Lcom/sun/xml/txw2/Document;
.end method
