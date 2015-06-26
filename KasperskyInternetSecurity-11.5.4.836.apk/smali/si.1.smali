.class public final Lsi;
.super Lsq;
.source "SourceFile"


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lsq;-><init>(II)V

    .line 13
    return-void
.end method

.method public static a(II)Lsi;
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lsi;

    const v1, 0x7f0700f2

    const v2, 0x7f0700f3

    invoke-direct {v0, v1, v2}, Lsi;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(II)LbK;
    .locals 2

    .prologue
    .line 30
    new-instance v0, LvW;

    invoke-static {p1, p2}, Lwc;->a(II)Lwc;

    move-result-object v1

    invoke-direct {v0, v1}, LvW;-><init>(Lwc;)V

    return-object v0
.end method
