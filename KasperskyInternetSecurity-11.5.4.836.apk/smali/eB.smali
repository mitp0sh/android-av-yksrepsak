.class public final LeB;
.super LeE;
.source "SourceFile"


# instance fields
.field private final a:Lcom/kaspersky/components/ucp/PositionInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/kaspersky/components/ucp/PositionInfo;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, LeE;-><init>(Ljava/lang/String;)V

    .line 10
    iput-object p2, p0, LeB;->a:Lcom/kaspersky/components/ucp/PositionInfo;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lcom/kaspersky/components/ucp/PositionInfo;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, LeB;->a:Lcom/kaspersky/components/ucp/PositionInfo;

    return-object v0
.end method
