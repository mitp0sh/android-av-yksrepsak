.class public interface abstract Lae/com/sun/xml/bind/v2/model/core/NonElement;
.super Ljava/lang/Object;
.source "NonElement.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/TypeInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/TypeInfo",
        "<TT;TC;>;"
    }
.end annotation


# static fields
.field public static final ANYTYPE_NAME:Ljavax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    const-string v2, "anyType"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/core/NonElement;->ANYTYPE_NAME:Ljavax/xml/namespace/QName;

    return-void
.end method


# virtual methods
.method public abstract getTypeName()Ljavax/xml/namespace/QName;
.end method

.method public abstract isSimpleType()Z
.end method
