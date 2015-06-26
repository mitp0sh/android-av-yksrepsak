.class public Lcom/kaspersky/components/ipm/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Lcom/kaspersky/components/ipm/ContentReference;

.field private b:J

.field private c:Z


# direct methods
.method public constructor <init>([Lcom/kaspersky/components/ipm/ContentReference;JZ)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/kaspersky/components/ipm/Response;->a:[Lcom/kaspersky/components/ipm/ContentReference;

    .line 25
    iput-wide p2, p0, Lcom/kaspersky/components/ipm/Response;->b:J

    .line 26
    iput-boolean p4, p0, Lcom/kaspersky/components/ipm/Response;->c:Z

    .line 27
    return-void
.end method


# virtual methods
.method public getContentReference()[Lcom/kaspersky/components/ipm/ContentReference;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/kaspersky/components/ipm/Response;->a:[Lcom/kaspersky/components/ipm/ContentReference;

    return-object v0
.end method

.method public getSecondsTillNextRequest()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/kaspersky/components/ipm/Response;->b:J

    return-wide v0
.end method

.method public isAskLater()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/kaspersky/components/ipm/Response;->c:Z

    return v0
.end method
