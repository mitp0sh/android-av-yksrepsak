.class public Lcom/sun/xml/txw2/IllegalSignatureException;
.super Lcom/sun/xml/txw2/TxwException;
.source "IllegalSignatureException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method
