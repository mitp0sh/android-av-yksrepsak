.class public Lcom/amazonaws/auth/policy/conditions/DateCondition;
.super Lcom/amazonaws/auth/policy/Condition;
.source "DateCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/conditions/DateCondition$DateComparisonType;
    }
.end annotation


# instance fields
.field private final dateUtils:Lcom/amazonaws/util/DateUtils;


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/policy/conditions/DateCondition$DateComparisonType;Ljava/util/Date;)V
    .locals 3
    .param p1, "type"    # Lcom/amazonaws/auth/policy/conditions/DateCondition$DateComparisonType;
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/Condition;-><init>()V

    .line 30
    new-instance v0, Lcom/amazonaws/util/DateUtils;

    invoke-direct {v0}, Lcom/amazonaws/util/DateUtils;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/conditions/DateCondition;->dateUtils:Lcom/amazonaws/util/DateUtils;

    .line 57
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/conditions/DateCondition$DateComparisonType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Condition;->type:Ljava/lang/String;

    .line 58
    const-string v0, "aws:CurrentTime"

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Condition;->conditionKey:Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazonaws/auth/policy/conditions/DateCondition;->dateUtils:Lcom/amazonaws/util/DateUtils;

    invoke-virtual {v2, p2}, Lcom/amazonaws/util/DateUtils;->formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Condition;->values:Ljava/util/List;

    .line 60
    return-void
.end method
