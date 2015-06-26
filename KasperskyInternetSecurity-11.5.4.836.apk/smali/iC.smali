.class public final LiC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:C

.field public b:F

.field public c:F

.field private d:I


# direct methods
.method public constructor <init>(IC)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput p1, p0, LiC;->d:I

    .line 570
    iput-char p2, p0, LiC;->a:C

    .line 571
    iput v0, p0, LiC;->b:F

    .line 572
    iput v0, p0, LiC;->c:F

    .line 573
    return-void
.end method

.method private a(LiC;)I
    .locals 2

    .prologue
    .line 577
    iget v0, p0, LiC;->d:I

    iget v1, p1, LiC;->d:I

    if-le v0, v1, :cond_0

    .line 578
    const/4 v0, 0x1

    .line 581
    :goto_0
    return v0

    .line 579
    :cond_0
    iget v0, p0, LiC;->d:I

    iget v1, p1, LiC;->d:I

    if-ge v0, v1, :cond_1

    .line 580
    const/4 v0, -0x1

    goto :goto_0

    .line 581
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 561
    check-cast p1, LiC;

    invoke-direct {p0, p1}, LiC;->a(LiC;)I

    move-result v0

    return v0
.end method
