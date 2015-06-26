.class public final Lsg;
.super Lsq;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p3}, Lsq;-><init>(II)V

    .line 15
    iput p2, p0, Lsg;->a:I

    .line 16
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 29
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lsg;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 32
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    .line 37
    :cond_0
    return-object v0
.end method

.method public static a(II)Lsg;
    .locals 3

    .prologue
    .line 20
    const v0, 0x7f0700f0

    const v1, 0x7f0a0004

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lsg;->a(III)Lsg;

    move-result-object v0

    return-object v0
.end method

.method public static a(III)Lsg;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lsg;

    invoke-direct {v0, p0, p1, p2}, Lsg;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 9
    check-cast p2, Ljava/lang/Integer;

    invoke-direct {p0, p1, p2}, Lsg;->a(Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final b(II)LbK;
    .locals 2

    .prologue
    .line 43
    new-instance v0, LvZ;

    invoke-static {p1, p2}, Lwc;->a(II)Lwc;

    move-result-object v1

    invoke-direct {v0, v1}, LvZ;-><init>(Lwc;)V

    return-object v0
.end method
