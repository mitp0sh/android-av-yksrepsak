.class public final LiJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Ljava/lang/String;

.field private synthetic f:LiI;


# direct methods
.method public constructor <init>(LiI;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    iput-object p1, p0, LiJ;->f:LiI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, LiJ;->e:Ljava/lang/String;

    .line 59
    const-string v0, "\\."

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 61
    const/4 v1, 0x0

    invoke-static {v0, v1}, LiJ;->a([Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, LiJ;->a:I

    .line 62
    const/4 v1, 0x1

    invoke-static {v0, v1}, LiJ;->a([Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, LiJ;->b:I

    .line 63
    const/4 v1, 0x2

    invoke-static {v0, v1}, LiJ;->a([Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, LiJ;->c:I

    .line 64
    const/4 v1, 0x3

    invoke-static {v0, v1}, LiJ;->a([Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, LiJ;->d:I

    .line 65
    return-void
.end method

.method private static a([Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 89
    array-length v0, p0

    if-le v0, p1, :cond_0

    aget-object v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, LiJ;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, LiJ;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, LiJ;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, LiJ;->e:Ljava/lang/String;

    return-object v0
.end method
