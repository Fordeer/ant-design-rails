import { SmileTwoTone } from '@ant-design/icons';
import { PageContainer } from '@ant-design/pro-components';
import { useIntl, useModel } from '@umijs/max';
import { Alert, Card, Typography } from 'antd';
import React from 'react';

const Demo: React.FC = () => {
  const intl = useIntl();
  const { initialState } = useModel('@@initialState');
  return (
    <PageContainer
      content={intl.formatMessage({
        id: 'pages.demo.subPage.title',
        defaultMessage: 'The simplest page built using Ant Design on Rails',
      })}
    >
      <Card>
        <Alert
          message={intl.formatMessage({
            id: 'pages.welcome.alertMessage',
            defaultMessage: 'Received a greeting from Rails with the current server time.',
          })}
          type="success"
          showIcon
          banner
          style={{
            margin: -12,
            marginBottom: 48,
          }}
        />
        <Typography.Title level={2} style={{ textAlign: 'center' }}>
          <SmileTwoTone /> {initialState?.antd?.greetings}
        </Typography.Title>
      </Card>
    </PageContainer>
  );
};

export default Demo;
