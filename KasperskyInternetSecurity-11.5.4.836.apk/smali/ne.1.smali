.class public final Lne;
.super Lnd;
.source "SourceFile"


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lnd;-><init>(Ljava/lang/Class;)V

    .line 15
    return-void
.end method

.method public static a(Ljava/lang/Class;)LsF;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lne;

    invoke-direct {v0, p0}, Lne;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/support/v4/app/Fragment;)Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method
