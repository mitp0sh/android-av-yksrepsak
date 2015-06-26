.class public final Lag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private synthetic e:Laf;


# direct methods
.method public constructor <init>(Laf;JJJLjava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lag;->e:Laf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-wide p2, p0, Lag;->a:J

    .line 237
    iput-wide p4, p0, Lag;->c:J

    .line 238
    iput-wide p6, p0, Lag;->d:J

    .line 239
    iput-object p8, p0, Lag;->b:Ljava/lang/String;

    .line 240
    return-void
.end method
