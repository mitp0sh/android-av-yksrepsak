.class public final Ljh;
.super Ljd;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:Ljava/lang/String;

.field public e:J

.field public f:J

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ljd;-><init>(Landroid/content/Context;)V

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljh;->e:J

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljd;-><init>(Landroid/content/Context;)V

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljh;->e:J

    .line 29
    iput-wide p2, p0, Ljh;->g:J

    .line 30
    return-void
.end method
