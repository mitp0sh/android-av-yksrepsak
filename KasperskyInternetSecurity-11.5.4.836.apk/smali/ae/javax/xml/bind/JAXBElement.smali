.class public Lae/javax/xml/bind/JAXBElement;
.super Ljava/lang/Object;
.source "JAXBElement.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/javax/xml/bind/JAXBElement$GlobalScope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final declaredType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final name:Ljavax/xml/namespace/QName;

.field protected nil:Z

.field protected final scope:Ljava/lang/Class;

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljavax/xml/namespace/QName;
    .param p3, "scope"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    .local p2, "declaredType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/javax/xml/bind/JAXBElement;->nil:Z

    .line 125
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 127
    :cond_1
    iput-object p2, p0, Lae/javax/xml/bind/JAXBElement;->declaredType:Ljava/lang/Class;

    .line 128
    if-nez p3, :cond_2

    const-class p3, Lae/javax/xml/bind/JAXBElement$GlobalScope;

    .line 129
    :cond_2
    iput-object p3, p0, Lae/javax/xml/bind/JAXBElement;->scope:Ljava/lang/Class;

    .line 130
    iput-object p1, p0, Lae/javax/xml/bind/JAXBElement;->name:Ljavax/xml/namespace/QName;

    .line 131
    invoke-virtual {p0, p4}, Lae/javax/xml/bind/JAXBElement;->setValue(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljavax/xml/namespace/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    .local p2, "declaredType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    const-class v0, Lae/javax/xml/bind/JAXBElement$GlobalScope;

    invoke-direct {p0, p1, p2, v0, p3}, Lae/javax/xml/bind/JAXBElement;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 141
    return-void
.end method


# virtual methods
.method public getDeclaredType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    iget-object v0, p0, Lae/javax/xml/bind/JAXBElement;->declaredType:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 154
    .local p0, "this":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    iget-object v0, p0, Lae/javax/xml/bind/JAXBElement;->name:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public getScope()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 186
    .local p0, "this":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    iget-object v0, p0, Lae/javax/xml/bind/JAXBElement;->scope:Ljava/lang/Class;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    iget-object v0, p0, Lae/javax/xml/bind/JAXBElement;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isGlobalScope()Z
    .locals 2

    .prologue
    .line 220
    .local p0, "this":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    iget-object v0, p0, Lae/javax/xml/bind/JAXBElement;->scope:Ljava/lang/Class;

    const-class v1, Lae/javax/xml/bind/JAXBElement$GlobalScope;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNil()Z
    .locals 1

    .prologue
    .line 199
    .local p0, "this":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    iget-object v0, p0, Lae/javax/xml/bind/JAXBElement;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lae/javax/xml/bind/JAXBElement;->nil:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeSubstituted()Z
    .locals 3

    .prologue
    .local p0, "this":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    const/4 v0, 0x0

    .line 228
    iget-object v1, p0, Lae/javax/xml/bind/JAXBElement;->value:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lae/javax/xml/bind/JAXBElement;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lae/javax/xml/bind/JAXBElement;->declaredType:Ljava/lang/Class;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNil(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 208
    .local p0, "this":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    iput-boolean p1, p0, Lae/javax/xml/bind/JAXBElement;->nil:Z

    .line 209
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lae/javax/xml/bind/JAXBElement;->value:Ljava/lang/Object;

    .line 167
    return-void
.end method
