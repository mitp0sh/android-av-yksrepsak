.class public interface abstract Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;
.super Ljava/lang/Object;
.source "NamespaceContext2.java"

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# virtual methods
.method public abstract declareNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract force(Ljava/lang/String;Ljava/lang/String;)I
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
.end method
