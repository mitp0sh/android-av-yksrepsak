.class public abstract LiS;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LiT;


# direct methods
.method public static a()LiT;
    .locals 2

    .prologue
    .line 9
    sget-object v0, LiS;->a:LiT;

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, LiS;->a:LiT;

    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeLibrariesManagerFactory was not called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, LiR;

    invoke-direct {v0}, LiR;-><init>()V

    sput-object v0, LiS;->a:LiT;

    .line 22
    :goto_0
    return-void

    .line 20
    :cond_0
    new-instance v0, LiM;

    invoke-direct {v0, p0}, LiM;-><init>(Ljava/lang/String;)V

    sput-object v0, LiS;->a:LiT;

    goto :goto_0
.end method
