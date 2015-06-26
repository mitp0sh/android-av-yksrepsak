.class public final Lwc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lwc;->a:I

    .line 14
    iput p2, p0, Lwc;->b:I

    .line 15
    return-void
.end method

.method public static a(II)Lwc;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lwc;

    invoke-direct {v0, p0, p1}, Lwc;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lwc;->a:I

    return v0
.end method

.method final b()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lwc;->b:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lwc;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lwc;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
