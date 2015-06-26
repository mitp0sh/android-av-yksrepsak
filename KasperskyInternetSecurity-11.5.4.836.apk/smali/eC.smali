.class public final LeC;
.super LeE;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, LeE;-><init>(Ljava/lang/String;)V

    .line 9
    iput p3, p0, LeC;->b:I

    .line 10
    iput-object p2, p0, LeC;->a:[B

    .line 11
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, LeC;->b:I

    return v0
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, LeC;->a:[B

    return-object v0
.end method
