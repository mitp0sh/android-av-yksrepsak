.class public final Lcom/kaspersky/components/updater/SignatureChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNativePtr:I


# direct methods
.method public constructor <init>([[B)V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    if-nez p1, :cond_0

    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Registries cannot be Null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/kaspersky/components/updater/SignatureChecker;->construct([[B)V

    .line 17
    return-void
.end method

.method private native construct([[B)V
.end method

.method private native destroy()V
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kaspersky/components/updater/SignatureChecker;->destroy()V

    .line 31
    return-void
.end method

.method public final native calculateHash(Ljava/lang/String;Ljava/io/InputStream;)[B
.end method

.method protected final finalize()V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/kaspersky/components/updater/SignatureChecker;->a()V

    .line 38
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 39
    return-void
.end method

.method public final native findHash([B)Z
.end method

.method public final native verifySignature(Ljava/lang/String;[B)Z
.end method
