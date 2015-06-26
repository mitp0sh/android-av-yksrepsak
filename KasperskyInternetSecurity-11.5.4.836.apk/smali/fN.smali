.class public LfN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LfJ;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, LfN;->a:I

    .line 13
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, LfN;->b()I

    move-result v1

    invoke-interface {v0, v1}, LaC;->a(I)Z

    move-result v0

    return v0
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, LfN;->a:I

    return v0
.end method
